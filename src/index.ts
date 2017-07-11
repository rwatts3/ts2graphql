
import * as ts from "typescript"
import * as fs from "fs"
import * as path from "path"
import { graphql } from 'graphql';
import { makeExecutableSchema } from "graphql-tools"
import { pascal } from "case"

import filter from "./filter"
import update from "./updater"

export class TSQL {

  constructor(public program: ts.Program) {
    update(program)
  }

  schema = makeExecutableSchema({
    typeDefs: fs.readFileSync(path.join(__dirname, '..', 'src', 'typescript.ql')).toString(), 
    resolvers: {
      Query: {
        nodes: () => filter(this.program, {}),
      },
      //id: (id: number) => { console.log('herer'); return filter(this.program, { id }) },
      //kind: (kind: string) => filter(this.program, { kind: stringToSyntaxKind(kind) }),
      //decorators: (node) => filter(this.program, { id: node.id }),
    }
  })

  query(q: string) {
   return graphql(this.schema, q)
  }

}

export default TSQL

function stringToSyntaxKind(str: string){
  return ts.SyntaxKind[pascal(str)];
}

