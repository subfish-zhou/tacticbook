import VersoManual
import Tacticbook.Intro

set_option linter.typography.dashes false
set_option linter.typography.quotes false

open Verso.Genre Manual
open Verso Code External

open Verso Doc Elab in
open Lean (quote) in
@[role_expander versionString]
def versionString : RoleExpander
  | #[], #[] => do
    let version ← IO.FS.readFile "../examples/lean-toolchain"
    let version := version.dropPrefix "leanprover/lean4:" |>.dropPrefix "v" |>.trimAscii |>.copy
    pure #[← ``(Verso.Doc.Inline.code $(quote version))]
  | _, _ => throwError "Unexpected arguments"


#doc (Manual) "Lean 4 TacticBook" =>

%%%
authors := ["Ziyu Zhou"]
%%%

测试文本

{include 1 Tacticbook.Intro}
