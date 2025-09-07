function fs() {
	
	var config ={
		name: 'Santosh',
		baseUrl: 'https://reqres.in/api'
	};
	var env = karate.env
	karate.log("the value if env is: ",env)
	
	karate.configure('connectTimeout',5000)
	karate.configure('readTimeout',5000)
	return config
}