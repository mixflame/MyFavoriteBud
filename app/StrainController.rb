class StrainController < UIViewController
  extend IB
  include BubbleWrap

  outlet :strain_name, UILabel
  outlet :strain_description, UILabel


  def viewDidAppear(animated)
    $sc = self
    load_strain
  end

  def load_strain
    HTTP.get("http://www.leafly.com/api/details/#{$key}") do |resp|
      break if resp.body.nil?
      $strain = JSON.parse(resp.body.to_str)
      @strain_name.text = $strain["Name"]
      @strain_description.text = $strain["Abstract"] == "" ? $strain["Overview"] : $strain["Abstract"]
    end
  end

  def openUrl(sender)
    App.open_url($url)
  end

  def goBack(sender)
    $app.switch_to_vc($app.load_vc("FavBud"))
  end

  def takePicture(sender)
    $app.switch_to_vc($app.load_vc("TakePic"))
  end

  def showPictures(sender)
    $app.switch_to_vc($app.load_vc("Picture"))
  end

  def bannerViewDidLoadAd(banner)
    NSLog("DidLoadAd")
    banner.setHidden false
  end

  def bannerView(banner, didFailToReceiveAdWithError:error)
    NSLog("DidFailToReceiveAdWithError")
    banner.setHidden true
  end


end