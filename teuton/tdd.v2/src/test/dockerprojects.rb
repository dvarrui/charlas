# test/dockerprojects.rb

group "Docker Projects" do
  format = '--format "table {{.Name}}\t{{.Service}}\t{{.Status}}\t{{.Ports}}"'

  for project in @projects
    dir = " --project-directory #{project[:dir]}"

    target "Project (#{project[:name]})"
    run "docker compose #{dir} ps #{format}"
    expect result.grep("tcp").count.ge 1
  end
end