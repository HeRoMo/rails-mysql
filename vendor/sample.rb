# load 'vendor/sample.rb'

def sample
  Task.delete_all
  Member.delete_all
  Project.delete_all
  project = Project.create(name: 'プロジェクト①');
  member1 = Member.create(name: 'メンバー①')

  task1 = Task.new(name: 'タスク-A', members: [member1])
  task2 = Task.new(name: 'タスク-B', members: [member1, Member.new(name: 'メンバー②')])

  project.tasks = [task1, task2]

  project.save
  project.reload

  pp project
  pp project.tasks
  pp project.tasks.last.members
  nil
end
