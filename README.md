# wavecoder-blog

A simple markdown-based blog repository with automated deployment to AWS S3.

## 📝 Blog Structure

This repository contains blog posts written in Markdown format. Each blog post is organized as follows:

- **Folder naming**: Each post must be in a folder named after the date of the post (format: `YYMMDD`)
- **Content file**: Each folder contains a `content.md` file with the blog post content
- **Example structure**:
  ```
  210314/
    content.md
  210321/
    content.md
  210404/
    content.md
  ```

## 🔄 Automation

### New Post Creation (`post.sh`)

The `post.sh` script simplifies creating new blog posts:

```bash
./post.sh <date> <title>
```

**Example:**
```bash
./post.sh 250816 "My New Blog Post"
```

The script:
- Creates a new folder named with the provided date (YYMMDD format)
- Generates a `content.md` file inside the folder
- Adds the title as a markdown header (`# Title`) as the first line
- Includes placeholder text for content
- Validates date format and prevents duplicate posts

### Sync Script (`sync.sh`)

The `sync.sh` script automatically:
- Analyzes all folders in the project
- Updates `manifest.json` with all folder names in descending order (newest first)
- Ensures the manifest stays current with the blog structure

### Pre-commit Hook

The sync script runs automatically before every git commit via a pre-commit hook:
- Executes `sync.sh` to update the manifest
- Adds any changes to `manifest.json` to the current commit
- Ensures the manifest is always up-to-date when changes are committed

## 🚀 Deployment

The repository includes a GitHub Actions workflow that automatically deploys content to an AWS S3 bucket when changes are pushed to the main branch.

### Required Configuration

Set up these GitHub repository variables and secrets:

**Variables:**
- `AWS_REGION` - Your AWS region (e.g., `us-east-1`)
- `S3_BUCKET_NAME` - Your S3 bucket name
- `CLOUDFRONT_DISTRIBUTION_ID` - (Optional) CloudFront distribution ID

**Secrets:**
- `AWS_ACCESS_KEY_ID` - AWS access key
- `AWS_SECRET_ACCESS_KEY` - AWS secret key

## 📋 manifest.json

The `manifest.json` file contains an ordered list of all blog post folders, automatically maintained by the sync script. This file can be used by frontend applications to display blog posts in chronological order.
