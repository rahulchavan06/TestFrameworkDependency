Pod::Spec.new do |spec|
  spec.name = 'TestFrameworkDependency'
  spec.version = '1.0'
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.homepage = 'https://github.com/rahulchavan06'
  spec.authors = { 'Rahul Chavan' => 'rahul.chavan06@github.com' }
  spec.summary = 'Bluejay is a simple Swift framework for building reliable Bluetooth apps.'
  spec.source = { git: 'https://github.com/rahulchavan06/TestFrameworkDependency.git'}
  spec.source_files = 'TestFrameworkDependency/*.{h,swift}'
  spec.framework = 'SystemConfiguration'
  spec.platform = :ios, '11.0'
  spec.requires_arc = true
  spec.swift_version = '5.0'
end
