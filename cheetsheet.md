# Tactic cheatsheet
### rw

**功能** 

1. 使用一个等式，``rw`` 在**目标**中找到符合等式左侧的部分，然后将这部分替换为等式右侧。
   1. 反向重写，即将目标中的一部分替换为等式的左侧
**语法**
```lean
rw [theorem1, theorem2, ...]
rw [theorem1, ← theorem2, ...]
```

**用例**
```lean
example (a b c : ℝ) : a * b * c = b * (a * c) := by
  rw [mul_comm a b, mul_assoc b a c]
```

**变体**

``nth_rw``

