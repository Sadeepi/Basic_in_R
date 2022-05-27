msg="cat is sleeping.\nDog is running"
print(msg)
cat(msg)     # In R if you want to see the escaping character nature cat function should be used.

msg="cat is sleeping.\tDog is running"
print(msg)
cat(msg)

msg="Mother says that, \"son,get your breakfast early today\""
cat(msg)

msg='Mother says that, \'son,get your breakfast early today\''
cat(msg)

msg="Mother says that, 'son,get your breakfast early today'"    # can use both single and double quotations. It does not give errors.
cat(msg)
print(msg)      # not use escaping characters. so can use print function 
 

msg='Mother says that, "son,get your breakfast early today"'  
cat(msg)
print(msg) 

msg="cat is sleeping\\Dog is running"
print(msg)
cat(msg)
