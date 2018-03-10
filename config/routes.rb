
Rails.application.routes.draw do
	root 'games#play'
	get('/update_results/:outcome', controller: 'games', action: 'update_results')
end
