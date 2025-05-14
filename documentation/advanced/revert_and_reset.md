## Task 2: Undoing Changes – Reset & Revert

### Scenario: You accidentally committed incorrect changes and need to undo them.

1. **Create and modify a file:**

    ```bash
    echo "Wrong code" >> wrong.txt
    git add .
    git commit -m "Committed by mistake"
    ```

2. **Soft Reset (keeps changes staged):**

    ```bash
    git reset --soft HEAD~1
    ```

3. **Mixed Reset (unstages changes but keeps files):**

    ```bash
    git reset --mixed HEAD~1
    ```

4. **Hard Reset (removes all changes):**

    ```bash
    git reset --hard HEAD~1
    ```

5. **Revert a commit safely:**

    ```bash
    git revert HEAD
    ```

---

### Differences between reset and revert:

- **Reset:** 
   - It can **alter the commit history** (rewriting history).
   - It can be **dangerous** if pushed to a shared repository, especially with `--hard` or `--mixed`.
   - It allows **three modes**: `soft`, `mixed`, and `hard`, offering different levels of reset (staged, unstaged, or full removal).
  
- **Revert:** 
   - It **does not rewrite history**. Instead, it **creates a new commit** that undoes the changes of the specified commit.
   - It is **safe** for shared repositories, as it doesn't modify the commit history.

---

### When to use each method:

- **Use `reset`**:
   - When you need to undo a local commit before pushing (or dealing with your own local history).
   - `--soft` when you want to keep the changes staged.
   - `--mixed` when you want to unstage the changes but keep them in your working directory.
   - `--hard` when you want to completely discard the changes.

- **Use `revert`**:
   - When you need to undo a commit that has already been pushed and shared.
   - When you want to maintain history and not rewrite it (especially important in team environments).

