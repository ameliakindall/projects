

#locate login button by id and click, when the drop-down opens 
#click in the username text field and set username,click in 
#password field and set password, click login -- is when_present necessary?

browser = Watir::Browser.new :chrome
browser.goto('staging.taskeasy.com')
browser.a(id: 'login-drop').when_present.click 
browser.input(id: 'displayName').set('amy.kindall@taskeasy.com') 
browser.input(id: 'password').set('asdf123') 
browser.button(id: 'loginButton').click 


#write something that would check to see 
#if eric crimmins is still on the about us page

browser = Watir::Browser.new :chrome
browser.goto('taskeasy.com/about/')
eric = browser.div(id: 'our_leadership').text.include?('eric crimmins')

if eric == true
	puts "Yay! Eric still works here!"
else
	puts "I blame Coral's machiavellian scheme."
end

