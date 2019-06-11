// nested key subscript, reference https://stackoverflow.com/a/41543070/1477298
public extension Dictionary {
    subscript(jsonDict key: Key) -> [String: Any]? {
        get {
            return self[key] as? [String: Any]
        }
        
        set {
            self[key] = newValue as? Value
        }
    }
}
