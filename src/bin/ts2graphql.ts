#!/usr/bin/env node

// Copyright 2017 Sam Vervaeck
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE. 

import * as ts from "typescript"
import * as path from "path"
import * as fs from "fs"
import TSQL from "../index"

const argv = require('yargs')
  .usage('ts2graphql [source files] ...')
  .version()
  .argv

let program

if (argv._.length === 0) {

  const { options, errors } = ts.parseCommandLine(argv['--'] || [])
  if (!options) {
    for (const err of errors) {
      console.error(renderError(err));
    }
    process.exit(1);
  }

  program = ts.createProgram(argv._, options);

} else {

  const basePath: string = path.resolve(argv['project'] || process.cwd())
  const { config, error } = ts.parseConfigFileTextToJson("tsconfig.json", fs.readFileSync(path.resolve(basePath, "tsconfig.json")).toString())

  if (error) {
    console.error(renderError(error));
    process.exit(1);
  }

  const { errors, fileNames, options } = ts.parseJsonConfigFileContent(config, ts.sys, basePath);
  if (!options) {
    for (const err of errors) {
      console.error(renderError(err));
    }
    process.exit(1);
  }

  program = ts.createProgram(fileNames, options);

}

const tsql = new TSQL(program)

async function run() {
  console.log(JSON.stringify(await tsql.query(argv.query || '{}')))
}

run()

type SimplePropertyName = ts.Identifier | ts.StringLiteral | ts.NumericLiteral

function isSimplePropertyName(name: ts.PropertyName) {
  return name.kind === ts.SyntaxKind.Identifier 
    || name.kind === ts.SyntaxKind.StringLiteral
    || name.kind === ts.SyntaxKind.NumericLiteral
}

function renderError(error: ts.Diagnostic): string {
  let output = ''
  if (error.file) {
    const loc = ts.getLineAndCharacterOfPosition(error.file, error.start);
    output += `${ error.file.fileName }(${ loc.line + 1 },${ loc.character + 1 }): `;
  }
  output += `${ ts.flattenDiagnosticMessageText(error.messageText, ts.sys.newLine) }`
  return output
}

