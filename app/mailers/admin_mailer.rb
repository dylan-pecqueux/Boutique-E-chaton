class AdminMailer < ApplicationMailer

  def info_new_order(order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    
    @first = order.user.first_name
    @email = order.user.email
    @last = order.user.last_name
    @cart = order.user.carts.last
    @order = order

  
    # # # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to:'admin-chaton@yopmail.com', subject: 'Une nouvelle commande sur e-chaton.fr !')
  end

end
