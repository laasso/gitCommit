#!/bin/bash
# Author: https://github.com/laasso

# Color definitions
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No color

# Header
echo -e "${YELLOW}==============================${NC}"
echo -e "${GREEN}       Git Push Script       ${NC}"
echo -e "${YELLOW}==============================${NC}"

# Request commit message
echo -e "${GREEN}Enter the commit message:${NC}"
read cmmname

# Add changes (including deleted files)
echo -e "${YELLOW}Adding changes...${NC}"
git add -A  # Use -A to add all changes (new, modified, and deleted)

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo -e "${RED}No changes to commit.${NC}"
    exit 1
fi

# Commit changes
echo -e "${YELLOW}Committing with message: '${cmmname}'...${NC}"
if git commit -m "$cmmname"; then
    echo -e "${GREEN}Commit completed successfully.${NC}"
else
    echo -e "${RED}Error during commit. Check the changes.${NC}"
    exit 1
fi

# Request target branch
echo -e "${CYAN}Enter the target branch (default: main):${NC}"
read branch
branch=${branch:-main}  # Set 'main' as the default value

# Confirmation before push
echo -e "${YELLOW}You are about to push to the '${branch}' branch. Do you want to continue? (y/n):${NC}"
read -n 1 confirm
echo # New line

if [[ $confirm != [yY] ]]; then
    echo -e "${RED}Operation canceled.${NC}"
    exit 0
fi

# Push changes
echo -e "${YELLOW}Pushing to branch '${branch}'...${NC}"
if git push origin "$branch" 2>&1; then
    echo -e "${GREEN}Git push completed successfully!${NC}"
else
    echo -e "${RED}Error during git push. Check permissions and connection.${NC}"
    exit 1
fi

# Print author
echo -e "${CYAN}Script completed. Author: https://github.com/laasso${NC}"

