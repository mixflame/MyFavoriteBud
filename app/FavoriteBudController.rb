class FavoriteBudController < UIViewController
  extend IB
  include BubbleWrap

  attr_accessor :strains_array, :strains_hash, :urls_hash

  outlet :strain, UITableView

  def viewDidAppear(animated)
    $fbc = self
    load_strains
  end

  def load_strains
    HTTP.get("http://www.leafly.com/api/strains") do |resp|
      break if resp.body.nil?
      strains = JSON.parse(resp.body.to_str)
      @strains_array = []
      @strains_hash = {}
      @urls_hash = {}
      strains.each do |strain|
        @strains_array << strain["Name"]
        @strains_hash[strain["Name"]] = strain["Key"]
        @urls_hash[strain["Name"]] = strain["Url"]
      end

      @strain.reloadData
    end
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier("FavBud")

    if not cell
      cell = UITableViewCell.alloc.initWithStyle UITableViewCellStyleDefault, reuseIdentifier:'FavBud'
    end

    cell.setText @strains_array[indexPath.row]

    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @strains_array.nil? ? 0 : @strains_array.size
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    # p @server_list_hash[indexPath.row]
    name = @strains_array[indexPath.row]
    $key = @strains_hash[name]
    $url = @urls_hash[name]
    # port.text = @server_list_hash[indexPath.row][:port]
  end

  def viewStrain(sender)
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