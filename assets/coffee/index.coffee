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
	, 700
	renderProjects projects

# fadein sequently projects count+ 200 ms
renderProjects = (projects) ->
	el = $ '#projects'
	template = Handlebars.compile($('#project-template').html());
	counter = 700
	for key, project of projects
		projectElement = $(template project)
		el.append projectElement
		projectElement.delay(counter+=150).queue (next) ->
			$(this).css({"opacity":1, "top":0})
			next()