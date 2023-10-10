abstract class ChangePasswordStates {}

class ChangePasswordInitialState extends ChangePasswordStates {}

class ChangePasswordSuccessfulState extends ChangePasswordStates {}

class ChangePasswordLoadingState extends ChangePasswordStates {}

class ChangePasswordErrorState extends ChangePasswordStates {}

class CurrentChangePasswordState extends ChangePasswordStates {}

class NewChangePasswordState extends ChangePasswordStates {}

class ConfirmChangePasswordState extends ChangePasswordStates {}
