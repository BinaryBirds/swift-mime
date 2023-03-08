# swift-mime

The swift-mime library can convert file extensions into possible MIME types.

## Install command line utility

You can use the command line utility to convert file extensions into file MIME types on the fly.

```
$ git clone https://github.com/BinaryBirds/swift-mime.git && cd swift-mime
$ make install

$ mime txt 
$ # => text/plain
```

## Library usage

You can use the [Swift Package Manager](https://theswiftdev.com/2017/11/09/swift-package-manager-tutorial/) as usual:

```swift
.package(url: "https://github.com/binarybirds/swift-mime", from: "1.0.0"),

.product(name: "MIME", package: "swift-mime"),
```

⚠️ Don't forget to add "MIME" to your target as a dependency!

```swift
import MIME

let mime = MIME()
let result = mime.getType(for: "txt")

print(result) // => text/plain
```

## Useful resources

- [Mime types for JavaScript](https://github.com/broofa/mime)
- [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types)
- [mimetype.io](https://mimetype.io/all-types/)
- [All known MIME types](https://www.digipres.org/formats/mime-types/)
- [What Is a File Extension and MIME Type?](https://www.lifewire.com/file-extensions-and-mime-types-3469109)

