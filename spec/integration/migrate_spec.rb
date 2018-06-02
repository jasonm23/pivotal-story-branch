RSpec.describe "`story_branch migrate` command", type: :cli do
  it "executes `story_branch help migrate` command successfully" do
    output = `story_branch help migrate`
    expected_output = <<-OUT
Usage:
  story_branch migrate

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end