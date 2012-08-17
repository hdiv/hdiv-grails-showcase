class UrlMappings {

	static mappings = {
		name tamperingResult: "/$section/parameterTampering/tamperingResults" {
			controller = 'parameterTampering'
			action = 'tamperingResults'
		}
		"/$section/$controller/$action?/$id?"()
		
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
