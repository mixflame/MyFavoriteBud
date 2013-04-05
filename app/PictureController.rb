class PicturesController < UIViewController
  extend IB
  include BubbleWrap

  outlet :picture, UIImageView

  def viewDidAppear(animated)
    $pc = self
    @index = 0
    load_image
  end

  def load_image
    begin
      query = PFQuery.queryWithClassName("StrainPicture")
      query.whereKey("key", equalTo:$key)
      pics = query.findObjects
      pic_data = pics[@index % pics.length].objectForKey("picture").getData
      image = UIImage.imageWithData(pic_data)
      @picture.image = image
    rescue
      BubbleWrap::App.alert "Error getting image."
    end
  end

  def previousImage(sender)
    @index -= 1
    load_image
  end

  def nextImage(sender)
    @index += 1
    load_image
  end


  def goBack(sender)
    $app.switch_to_vc($app.load_vc("Strain"))
  end

end