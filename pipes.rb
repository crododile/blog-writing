
class Object
  def pipe(*args)
    #first argument will be the method we want to send
    #the rest will be any arguments to the method
    meth, otherArgs = args[0], args.drop(1)
    
    #remember pipe is actually being called on the return value of the previous method call,
    #which we want to pass as the first argument to our quasi-functional method call.
    firstArg = self

    #Method is like the Send's quasi-functional brother. It's pretty cool and you should check it out.
    #http://ruby-doc.org/core-2.2.0/Method.html (It's listed under meth in the docs for some reason )
    otherArgs.empty? ? firstArg.method(meth).call : firstArg.method(meth).call(*otherArgs)
  end

  def pipe2(*args)
    fd
  end
end

p "Metova".pipe(:upcase).pipe(:reverse).pipe(:split, "")

