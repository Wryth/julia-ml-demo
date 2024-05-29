# https://github.com/JuliaPy/PyCall.jl
# alternative: https://github.com/cjdoris/PythonCall.jl

using Pkg
ENV["PYTHON"] = "C:/Users/vikhan/.pyenv/pyenv-win/versions/3.10.8/python.exe" 
# ENV["PYTHON"] = raw"C:\Users\vikhan\.pyenv\pyenv-win\versions\3.10.8\python.exe" 
#Pkg.add("PyCall")
#Pkg.build("PyCall")


module PythonCall

using PyCall
	
function sin()
	math = pyimport("math")
	return math.sin(math.pi / 4)
end



end


using .PythonCall

function main()
	py_result = PythonCall.sin() 
	println("Result from python call: $py_result")
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
