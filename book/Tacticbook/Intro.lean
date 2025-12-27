import VersoManual

import Tacticbook.Examples

set_option linter.typography.dashes false
set_option linter.typography.quotes false

open Tacticbook

open Verso.Genre Manual
open Verso Code External

#doc (Manual) "简介" =>
%%%
file := "Intro"
tag := "Intro"
htmlSplit := .never
%%%


:::setup

-- test text
测试文本

```lean
-- test code
def foo (n : Nat) : Nat := -- 测试代码
  n + 1
```

:::
