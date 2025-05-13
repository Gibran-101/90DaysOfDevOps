# Week 4 Git Challenge - Complete Documentation

## 🧩 Task 1: Fork and Clone the Repository

1. **Fork** the main repository using the GitHub interface.
2. **Clone** your forked version locally:

    git clone https://github.com/<your-username>/90DaysOfDevOps.git
    cd 2025/git/01_Git_and_Github_Basics

---

## 🧱 Task 2: Initialize Local Repo and Create a File

1. **Create challenge folder** and initialize it:

    mkdir week-4-challenge  
    cd week-4-challenge  
    git init

2. **Create a file** named `info.txt` and add introductory content.
3. **Stage and commit** the file:

    git add info.txt  
    git commit -m "Initial commit: Add info.txt with introductory content"

---

## 🔐 Task 3: Configure Remote URL with PAT and Push

1. **Add remote URL** with embedded Personal Access Token (PAT):

    git remote add origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git

> If `origin` already exists, use:

    git remote set-url origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git

2. **Push** to GitHub:

    git push -u origin main

3. **Pull** to verify sync:

    git pull origin main

---

## 📜 Task 4: View Commit History

Check commit log:

    git log

---

## 🌿 Task 5: Advanced Branching and Conflict Simulation

1. **Create a branch**:

    git branch feature-update  
    git switch feature-update

2. **Modify `info.txt`**, stage and commit:

    git add info.txt  
    git commit -m "Feature update: Enhance info.txt with additional details"  
    git push origin feature-update

3. **Merge via Pull Request** on GitHub.

---

### 💥 Optional Chaos: Merge Conflict Simulation

1. **Create and switch to `experimental` branch** from main:

    git checkout main  
    git branch experimental  
    git checkout experimental

2. **Make conflicting changes** to `info.txt`, commit them:

    git add info.txt  
    git commit -m "Experimental chaos: conflicting change"

3. **Merge experimental into main** to trigger a conflict:

    git checkout main  
    git merge experimental

4. **Manually resolve conflict** in `info.txt`.

5. **Stage and commit resolved file**:

    git add info.txt  
    git commit -m "Resolved merge conflict like a git warlord"  
    git push origin main

---

## 🧠 Task 6: Why Branching Strategies Matter

### 📌 Overview

Branching strategies are crucial in collaborative software development. They enable structure, reduce chaos, and make it possible for multiple people to work on the same codebase without constantly stepping on each other’s toes.

---

### 🔍 Key Benefits

1. **🧪 Isolating Features and Bug Fixes**  
   Separate branches ensure that new features or bug fixes don’t interfere with the stable version of your application.

2. **🚀 Parallel Development**  
   Teams can work simultaneously on different features. One dev works on a login system, another on performance optimization — no interference.

3. **🛡️ Reducing Merge Conflicts**  
   Isolated changes mean fewer conflicts. And when they do happen (as I simulated), they’re easier to manage and trace.

4. **🔍 Better Code Reviews**  
   With branches, each change can be reviewed independently via Pull Requests. This ensures that every piece of code is tested, reviewed, and approved before hitting `main`.

---

