require "open3"

desc "Put diff comment to Pull request"
task :comment_diff do
  if ENV['CI_PULL_REQUEST'] ~= /([0-9]*)$/
    pr_num = $1
    out, _ = Open3.capture2e('bundle exec rezept apply --dry-run')
    comment = <<-EOS
`bundle exec rezept apply --dry-run`

```diff
#{out}
```
EOS
    payload = {body: comment}
    RestClient.post(
      "https://api.github.com/repos/#{ENV['CIRCLE_PROJECT_USERNAME']}/#{ENV['CIRCLE_PROJECT_REPONAME']}/issues/#{pr_num}/comments",
      JSON.generate({body: comment}),
      {content_type: :json, :authorization: "token #{ENV['GITHUB_ACCESS_TOKEN']}"}
    )
    puts "Put the comment to pull-request \##{pr_num}."
  else
    puts 'This is not a pull-request.'
  end
end
