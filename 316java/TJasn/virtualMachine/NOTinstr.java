package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class NOTinstr extends ZeroOperandInstruction {

  void execute ()
  {
    EXPRSTACK[ESP - 1] = (EXPRSTACK[ESP - 1] == 0) ? 1 : 0;
  }

  public NOTinstr ()
  {
    super("NOT");
  }
}
