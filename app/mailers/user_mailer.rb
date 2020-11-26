class UserMailer < ApplicationMailer
  default from: 'no-reply-to-chaton@yopmail.com'
 
  def welcome_email(user)
    
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://projet-e-chaton-develop.herokuapp.com/users/sign_in' 
  
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end



  def order_email(order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    #@user = user
    email = order.user.email
    
    
    @first = order.user.first_name
    @cart = order.user.carts.last
    @order = order

    # # #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://projet-e-chaton-develop.herokuapp.com/users/sign_in' 
  
    # # # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: email, subject: 'Ta commande sur e-chaton.fr !') 
  end

end
