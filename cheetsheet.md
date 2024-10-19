# Tactic cheatsheet
### rewrite

`rw` is like `rewrite`, but also tries to close the goal by "cheap" (reducible) `rfl` afterwards.

**语法**
```lean
rw [expression1, ← expression2, ...]
```
**功能** 

使用一个等价关系表达式，``rw`` 在目标中找到符合等价关系左侧的部分，然后将这部分替换为等价关系右侧。
- 可以在表达式前添加 `←` 表示反转重写方向，即从右侧到左侧。
- 支持的等价关系：等式、双向蕴含、同构......

**用例**
```lean
example (a b c : Nat) : a + b + c = a + c + b := by
  rewrite [Nat.add_assoc a b c, Nat.add_comm b, ← Nat.add_assoc]
  rfl  -- 如果使用 `rw` 策略就不需要`rfl`

example (p q r : Prop) (h : p ↔ q) : p ∧ r ↔ q ∧ r := by
  rw [h]
```

**变体**

``nth_rw``在证明中进行特定位置的重写。它可以让你指定要重写的等式在某个特定位置，而不是默认的第一个位置。

