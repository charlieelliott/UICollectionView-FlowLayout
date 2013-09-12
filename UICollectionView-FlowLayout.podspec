Pod::Spec.new do |s|
  s.name         = 'UICollectionView-FlowLayout'
  s.version      = '0.0.1'
  s.summary      = 'Category on UICollectionView to expose FlowLayout delegate methods.'
  s.homepage     = 'https://github.com/charlieelliott/UICollectionView-FlowLayout'
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { 'Charlie Elliott' => 'hiddenworldhut@gmail.com' }
  s.source       = { :git => 'https://github.com/charlieelliott/UICollectionView-FlowLayout.git', :commit => 'ca1d4dee7cb3342ab17fbcb843635e76c5f882e6' }
  s.source_files = '*.{h,m}'
  s.ios.deployment_target = '6.0'
  s.requires_arc = false
end