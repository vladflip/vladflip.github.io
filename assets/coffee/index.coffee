$.ajax 
	url: 'projects.json'
.done (projects) ->
	renderProjects projects

renderProjects = (projects) ->
	el = $ '#projects'
	template = Handlebars.compile($('#project-template').html());
	for key, project of projects
		el.append template project