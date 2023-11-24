package pipeline

ENV: {
	BUILDKITE_AGENT_ENDPOINT: string | *"DUMMY VALUE"
}
dynamic_steps: [
	{command: "echo step 1"},
	{command: "echo step 2"},
	{command: "echo agent endpoint: \(ENV.BUILDKITE_AGENT_ENDPOINT)"},
	{command: "echo step 3"},
]
