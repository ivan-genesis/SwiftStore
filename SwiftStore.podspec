Pod::Spec.new do |s|
  s.name = 'SwiftStore'
  s.version = '1.0.0'
  s.platform = :ios
  s.authors = 'that guy'
  s.homepage = 'http://www.google.com'
  s.ios.deployment_target = '10.0'
  s.source_files = '**/*.{h,m,swift,mm,a}'
  s.source = { :git => 'https://github.com/sin-ivan/SwiftStore.git' }
  s.summary = 'key value db base on level db'
  s.requires_arc = true
  s.frameworks  = "Foundation"
  s.vendored_libraries = 'leveldb/libleveldb.a'
  s.vendored_frameworks  = 'SwiftStore.framework'
  s.preserve_paths = 'leveldb/**'
  s.library = 'c++'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/SwiftStore/**' }
  s.public_header_files = 'SwiftStore.framework/Versions/A/Headers/*.h'
  s.xcconfig            = {
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/SwiftStore"',
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks',
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
