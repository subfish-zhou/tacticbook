import Lake
open Lake DSL

package "tacticbook" where
  -- add package configuration options here

lean_lib «Tacticbook» where
  -- add library configuration options here

@[default_target]
lean_exe "tacticbook" where
  root := `Main

require mathlib from git
  "https://github.com/leanprover-community/mathlib4"
