# otogitex
Shortens the process of adding, committing, and pushing changes from your local repo to GitHub<br>
in just one command. This script is useful if you have multiple GitHub accounts and want to avoid<br>
displaying your personal access token on screen during a live stream. Just run this script.<br>
<br>
but if you only use one account and use SSH, don't use this script, this script is intended<br>
only for those who need it. I don't need comments/criticism if you don't have the needs according<br>
to the conditions above.

# Requirement
You must have elixir installed on your machine, better using latest version.<br>
(Unix-like Distro only!! I'm sorry windows users, i'm not part of ur community).

# Must Change First
## Configuration:

Replace `<YOUR_USERNAME>` with your GitHub username.<br>
Replace `<YOUR_PERSONAL_ACCESS_TOKEN>` with your GitHub personal access token.<br>

## Use Alias
Add this code in your `.bashrc` file as an alias:

```bash
alias gitpush='elixir ~/path/to/gitpush.exs'
# For the "gitpush" alias name, you can change it to any alias you prefer.
# For the path ~/path/to/gitpush.exs, make sure to update it to the actual location
# where you have placed the gitpush.exs file. Ensure that you provide the correct path.
```
After that, run in your terminal the following command:

```bash
source ~/.bashrc
```

# How To use
Now you can use the gitpush alias to run elixir scripts in the following way:

```bash
gitpush "what-message for ur commit"
# The "gitpush" command depends on the alias name you have set.
```
<br>
> Remember to use the above code in your local repository, not outside of it. Ensure you're
> working within the repository you want to push to GitHub.
