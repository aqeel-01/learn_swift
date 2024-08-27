import Cocoa





// section 1:  errors and throwable functions

//program 01

//  it will throw error if username sopace is not filled
enum RegistartionFormError: Error {
    
    case usernameEmpty
}

func example() throws {
    
    throw RegistartionFormError.usernameEmpty
}


//progarm 02

//it will throw error if password is short is less or equal to 6 characters



enum passwordValidationError: Error {
    
    case passwordTooShort
}


func validatePassword(password: String) throws {
    
    if password.count <= 6 {
    
        throw passwordValidationError.passwordTooShort
    }
    
}



//section 2: error handling and catching errors

enum RegistrationDetailsFormatError: Error {
    
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}


func validateUserDetails(username: String , password: String) throws {
    
    
    if username.isEmpty {
        throw RegistrationDetailsFormatError.usernameEmpty
    }
    
    else if password.isEmpty {
        throw RegistrationDetailsFormatError.passwordEmpty
    }
    
    else if password.count < 7 {
        throw RegistrationDetailsFormatError.passwordTooShort
    }
}


do  {
    try validateUserDetails(username: "Mr john ", password: "example")
    
    print("validation Succeed")
}

catch RegistrationDetailsFormatError.usernameEmpty,
      RegistrationDetailsFormatError.passwordEmpty {
    
    print("username and password  should not be empty")
}

catch RegistrationDetailsFormatError.passwordTooShort {
    print("password too short")
}

catch {
    print(error)
}




