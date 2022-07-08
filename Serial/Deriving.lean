import Lean
import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util

namespace Lean.Elab.Deriving.Serializable
open Lean.Parser.Term
open Meta
open Command

def mkSerializableInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  -- for now, just fail to derive it
  return false

builtin_initialize
  registerBuiltinDerivingHandler `Serializable mkSerializableInstanceHandler
  registerTraceClass `Elab.Deriving.beq
