class TakePictureController < UIViewController
  extend IB
  include BubbleWrap

  outlet :picture_view, UIImageView

  def viewDidAppear(animated)
    $tp = self
  end

  def showCam(sender)
    BW::Device.camera.rear.picture(media_types: [:image]) do |result|
      if !(result[:original_image] == nil)
        picture_view.image = result[:original_image]
      end
    end
  end

  def uploadImage(sender)
    imageData = UIImage.UIImageJPEGRepresentation(picture_view.image, 0.05)
    imageFile = PFFile.fileWithName("Image.jpg", data:imageData)
    imageFile.save
    userPhoto = PFObject.objectWithClassName("StrainPicture")
    userPhoto.setObject(imageFile, forKey: "picture")
    userPhoto.setObject($key, forKey: "key")
    userPhoto.save
    BubbleWrap::App.alert "Image uploaded."
  end

  def goBack(sender)
    $app.switch_to_vc($app.load_vc("Strain"))
  end

  # def bannerViewDidLoadAd(banner)
  #   NSLog("DidLoadAd")
  #   banner.setHidden false
  # end

  # def bannerView(banner, didFailToReceiveAdWithError:error)
  #   NSLog("DidFailToReceiveAdWithError")
  #   banner.setHidden true
  # end


end