defmodule GitPush do
  @username "<YOUR_USERNAME>"
  @token "<YOUR_PERSONAL_ACCESS_TOKEN>"
  @credentials_file System.user_home!() <> "/.git-credentials"

  def run([commit_message]) do
    setup_git_credentials()
    git_add_commit_push(commit_message)
  end

  def run(_) do
    IO.puts("Usage: elixir git_push.exs <commit_message>")
  end

  defp run_command(command) do
    {result, 0} = System.cmd("sh", ["-c", command])
    result
  rescue
    _ -> IO.puts("Error running command: #{command}")
  end

  defp setup_git_credentials do
    if not File.exists?(@credentials_file) do
      credentials = "https://#{@username}:#{@token}@github.com\n"
      File.write!(@credentials_file, credentials)
    end
  end

  defp git_add_commit_push(commit_message) do
    run_command("git add .")
    run_command("git commit -m \"#{commit_message}\"")
    run_command("git push origin main")
  end
end

# Entry point for the script
case System.argv() do
  [] ->
    GitPush.run([])

  [commit_message] ->
    GitPush.run([commit_message])
end
