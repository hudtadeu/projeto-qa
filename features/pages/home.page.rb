class Homepage < SitePrism::Page

  element :userName, :xpath, "//div[@class='profile-rail-card__actor-link t-16 t-black t-bold']"
  element :navBarHome, :id, "ember100"
  element :myIcon, :id, "ember15"

  def checkLoginSucessful
    expect(userName.text).to eql "Nome"
    expect(navBarHome.text).to eql "Início"
    expect(myIcon.text).to eql "Eu"
  end
end