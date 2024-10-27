
# Git Commit Script

[![GitHub issues](https://img.shields.io/github/issues/laasso/gitCommit?style=flat-square)](https://github.com/laasso/gitCommit/issues)
[![GitHub stars](https://img.shields.io/github/stars/laasso/gitCommit?style=flat-square)](https://github.com/laasso/gitCommit/stargazers)

A simple bash script for automating `git add`, `commit`, and `push` actions. This script guides users through each step to make git workflows faster and more reliable.

## Getting Started

### Download the Script

Clone the repository or download it as a `.zip` file.

```bash
# Clone the repository
git clone https://github.com/laasso/gitCommit.git

# Navigate into the directory
cd gitCommit
```

### Install the Script

Place the script in a commonly used directory like `~/scripts/` for easy access.

```bash
# Create a scripts directory if it doesn't exist
mkdir -p ~/scripts

# Move the script into the scripts directory
mv gitCommit/git-push.sh ~/scripts/
```

### Add an Alias to `.bashrc`

For quick access, create an alias in your `.bashrc` file:

```bash
nano ~/.bashrc
```

Add this line:

```bash
alias gitpush="bash ~/scripts/git-push.sh"
```

Save the file and reload `.bashrc`:

```bash
source ~/.bashrc
```

Now you can use the script by typing:

```bash
gitpush
```

## Usage

1. Run the script with `gitpush`.
2. Follow the prompts:
   - Enter a commit message.
   - Specify the branch (default: `main`).
   - Confirm push action.

The script provides feedback at each step and notifies on successful completion.

## Contributing

Contributions to improve this script are welcome! Here’s how to get started:

1. **Fork the repository**.
2. **Create a new branch** for your feature:
   ```bash
   git checkout -b feature-name
   ```
3. **Make and test changes**.
4. **Commit changes** with a descriptive message.
5. **Push to your branch**:
   ```bash
   git push origin feature-name
   ```
6. **Create a pull request** describing your changes.

Please ensure your code is clean and well-documented. For new features, add comments explaining their function.

---

**Author**: [laasso](https://github.com/laasso)

