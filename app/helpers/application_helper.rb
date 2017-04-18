module ApplicationHelper

  def fingerprint(data)
    Digest::MD5.digest(data.to_json)
  end

end
