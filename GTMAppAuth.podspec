Pod::Spec.new do |s|

  s.name         = "GTMAppAuth"
  s.version      = "1.1.0"
  s.summary      = "Authorize GTM Session Fetcher requests with AppAuth via GTMAppAuth"

  s.description  = <<-DESC

GTMAppAuth enables you to use AppAuth with the Google Toolbox for Mac - Session
Fetcher and Google APIs Client Library for Objective-C For REST libraries by
providing an implementation of GTMFetcherAuthorizationProtocol for authorizing
requests with AppAuth.

                   DESC

  s.platforms    = { :ios => "7.0", :osx => "10.11", :tvos => "9.0", :watchos => "6.0" }

  s.homepage     = "https://github.com/google/GTMAppAuth"
  s.license      = "Apache License, Version 2.0"
  s.authors      = { "William Denniss" => "wdenniss@google.com",
                     "Zsika Phillip" => "zsika@google.com",
                   }

  s.source       = { :git => "https://github.com/google/GTMAppAuth.git", :tag => s.version }
  s.prefix_header_file = false
  s.source_files = "GTMAppAuth/Sources/*.{h,m}"
  s.public_header_files = "GTMAppAuth/Sources/Public/GTMAppAuth/*.h"
  s.requires_arc = true

  s.ios.source_files = "GTMAppAuth/Sources/GTMOAuth2KeychainCompatibility/*.{h,m}",
                       "GTMAppAuth/Sources/iOS/**/*.{h,m}"
  s.ios.public_header_files = "GTMAppAuth/Sources/Public/GTMAppAuth/GTMOAuth2KeychainCompatibility/*.h"
  s.ios.deployment_target = "7.0"

  s.osx.source_files = "GTMAppAuth/Sources/GTMOAuth2KeychainCompatibility/*.{h,m}",
                       "GTMAppAuth/Sources/macOS/**/*.{h,m}"
  s.osx.public_header_files = "GTMAppAuth/Sources/Public/GTMAppAuth/GTMOAuth2KeychainCompatibility/*.h"
  s.osx.deployment_target = '10.11'

  s.tvos.source_files = "GTMAppAuth/Sources/iOS/GTMKeychain_iOS.m"
  s.tvos.deployment_target = '9.0'

  s.watchos.source_files = "GTMAppAuth/Sources/iOS/GTMKeychain_iOS.m"
  s.watchos.deployment_target = '6.0'

  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  s.framework = 'Security'
  s.dependency 'GTMSessionFetcher', '~> 1.4'
  s.dependency 'AppAuth/Core', '~> 1.4'
end
