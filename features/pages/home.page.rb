class Homepage < SitePrism::Page

  element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"
  element :navBarHome, :id, "ember100"
  element :myIcon, :id, "ember15"

  def checkLoginSuccessful
    expect(userName.text).to eql "Hudson Tadeu"
    expect(navBarHome.text).to eql "Início"
    expect(myIcon.text).to eql "Eu"
  end
end