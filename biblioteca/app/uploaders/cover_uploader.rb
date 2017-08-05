class CoverUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    "default-book.jpg"
  end

  version :thumb do
    process resize_to_fit: [50, 50]
  end

  version :medium do
    process resize_to_fit: [250, 250]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
