# Agentforce Coworker y Employee Agents
This document want to introduce us about the difference between Agentrforce Coworker and Employee Agents
## Mains Diferents
- Agentforce Coworker is more generic and Employee is designed with employer in mind
- Coworker is less specific, It's thinking for all the employers. On the other hand Employee agent's capability adapt depending the departament
- The coworker it's alredy configured. The Employee need to be created with there topics and actions
- In the information both of them has Data 360 but only the employee can have too context data
- The coworker is going to call an Employee agents if consider it better for the resolution
- Coworker is standar, It doesn't need develope

## When use who

*¿Do you have an specific use for the agent?*
- yes 
  - The use is rule-based and routine? 
    - Yes. Then use an employee agent
    - No. Then use  a coworker
- No. Then use a coworker

### Coworker
- If you don't have time to develope 
- If you want a Agent day 1
- If you need simple task like a search and you don't want get in salesforce
- If you need an agent for all your buisness

### Employee
- If you have an specific task to do without human intervention
- If you need to satisfy an specific sector
- If the agent need to have specific guardrail and buisness logic
- If the agent will had a lot of interaction
- If you need metrics and dashboard about the agent

## Use cases

### Specific question (Agentfofce Coworker)

Specific questions are thinks like find something in the database with an specific critter.

"Take the last oportunity from the most value customer"

"Find the opportunity with value better than 50k" 

### Struct process (Employee Agent)

When the question need an specific workflow to be solved. The workflow must to be previously configured for a developer

"How my interview with the customer gone?"

"Generate a quote with the last opportunity of Riot Games"

### Multistep process (Employee Agent)

These process are prevously defined and It list solutions or steps to follow. Usually in a concret buisness or department

"List the thinks I must done today"

"What information must need to generate a quote?"

### Use a field (Employee Agent)

Processes that require use a field not to give it to you, but instead to solve your problem thinking about it

"What's problem have the issue #31?"

### Process with both agents

In some cases if a question have an specific agent for it and the coworker can help you too, the coworker going to help you with the problem and after that delegate it to an Employee Agent.

In some cases the same coworker can delegate to more than one Employee agent

## We can have the two of them

Like I say in the last use case in the same question two different agents can answer us.

In this cases the coworker agent is in charge of delegate the task to the employee agent (They can be one or more employee agents)

### Roles

The coworker going to take the responsibility of be the universal AI, with a day 1 disponibility and managing the others agents

The employee agents are the specialist. They take the harder tasks with more buisness logical and specific workflows

