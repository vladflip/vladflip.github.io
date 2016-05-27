body = $ 'body'
loader = $ '#loader'

fadeoutLoader = ->
	body.removeClass 'loader_body'
	loader.fadeOut()

# maybe dropdown header
animateProjects = ->
	



$.ajax 
	url: 'projects.json'
.done (projects) ->
	setTimeout ->
		do fadeoutLoader
	, 1000
	renderProjects projects

# fadein sequently projects count+ 200 ms
renderProjects = (projects) ->
	el = $ '#projects'
	template = Handlebars.compile($('#project-template').html());
	for key, project of projects
		el.append template project