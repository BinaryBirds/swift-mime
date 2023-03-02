# swift-mime

swift-mime converts file extensions into file MIME types.


## Install command line utility

You can use the command line utility to convert file extensions into file MIME types on the fly.

```
git clone https://github.com/BinaryBirds/swift-mime.git && cd swift-mime
make install
```

## Usage

In your project folder run:
`swift mime pdf` 

If no extension added as an argument or wrong extension type added then error will thrown.

You can just use the [Swift Package Manager](https://theswiftdev.com/2017/11/09/swift-package-manager-tutorial/) as usual:

```swift
.package(url: "https://github.com/binarybirds/swift-mime", from: "1.0.0"),
```

⚠️ Don't forget to add "mimeSDK" to your target as a dependency!

```swift
import mimeSDK

let mimeResults = mimeType(for:'pd')
print(mimeResults)
```