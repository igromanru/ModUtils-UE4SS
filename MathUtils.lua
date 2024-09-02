
--- FVector ---
---------------

---@param X float?
---@param Y float?
---@param Z float?
---@return FVector # As userdata
function FVector(X, Y, Z)
    X = X or 0.0
    Y = Y or 0.0
    Z = Z or 0.0
    return {
        X = X,
        Y = Y,
        Z = Z
    }
end

---Returns FVector as string format "X: %f, Y: %f, Z: %f"
---@param Vector FVector
---@return string
function VectorToString(Vector)
    return string.format("X, Y, Z: %f, %f, %f", Vector.X, Vector.Y, Vector.Z)
end

---Resolves FVector as userdata
---@param Vector FVector
---@return FVector # FVector but as table
function VectorToUserdata(Vector)
    return FVector(Vector.X, Vector.Y, Vector.Z)
end

---Compares two FVector
---@param Vector1 FVector
---@param Vector2 FVector
---@return boolean Equal
function IsVectorEqual(Vector1, Vector2)
    return Vector1 and Vector2 and Vector1.X == Vector2.X and Vector1.Y == Vector2.Y and Vector1.Z == Vector2.Z
end

---Checks if FVector is equal to 0, 0, 0
---@param Vector FVector
---@return boolean
function IsEmptyVector(Vector)
    return IsVectorEqual(Vector, FVector(0, 0, 0))
end

-- FVector2D --
---------------

---@param X float?
---@param Y float?
---@return FVector2D # As userdata
function FVector2D(X, Y)
    X = X or 0.0
    Y = Y or 0.0
    return {
        X = X,
        Y = Y
    }
end

---Returns FVector2D as string format "X: %f, Y: %f"
---@param Vector2D FVector2D
---@return string
function Vector2DToString(Vector2D)
    return string.format("X, Y: %f, %f", Vector2D.X, Vector2D.Y)
end

---Resolves FVector2D as userdata
---@param Vector2D FVector2D
---@return FVector2D # FVector2D but as table
function VectorToUserdata(Vector2D)
    return FVector2D(Vector2D.X, Vector2D.Y)
end

---Compares two FVector2D
---@param Vector2D1 FVector2D
---@param Vector2D2 FVector2D
---@return boolean Equal
function IsVector2DEqual(Vector2D1, Vector2D2)
    return Vector2D1 and Vector2D2 and Vector2D1.X == Vector2D2.X and Vector2D1.Y == Vector2D2.Y
end

---Checks if FVector is equal to 0, 0
---@param Vector2D FVector2D
---@return boolean
function IsEmptyVector2D(Vector2D)
    return IsVector2DEqual(Vector2D, FVector2D(0, 0))
end

---- FQuat ----
---------------

---@param X float?
---@param Y float?
---@param Z float?
---@param W float?
---@return FQuat # As userdata
function FQuat(X, Y, Z, W)
    X = X or 0.0
    Y = Y or 0.0
    Z = Z or 0.0
    w = W or 0.0
    return {
        X = X,
        Y = Y,
        Z = Z,
        W = W
    }
end


---Returns FQuat as string format "X: %f, Y: %f, Z: %f, W: %f"
---@param Quat FQuat
---@return string
function QuatToString(Quat)
    return string.format("X, Y, Z, W: %f, %f, %f, %f", Quat.X, Quat.Y, Quat.Z, Quat.W)
end

---Resolves FQuat as userdata
---@param Quat FQuat
---@return FQuat # FQuat but as table
function QuatToUserdata(Quat)
    return FQuat(Quat.X, Quat.Y, Quat.Z, Quat.W)
end

---Compares two FQuat
---@param Quat1 FQuat
---@param Quat2 FQuat
---@return boolean Equal
function IsQuatEqual(Quat1, Quat2)
    return Quat1 and Quat2 and Quat1.X == Quat2.X and Quat1.Y == Quat2.Y and Quat1.Z == Quat2.Z and Quat1.W == Quat2.W
end

---Checks if FQuat is equal to 0, 0, 0, 0
---@param Quat FQuat
---@return boolean
function IsEmptyQuat(Quat)
    return IsQuatEqual(Quat, FQuat(0, 0, 0, 0))
end

-- FRotator --
--------------

---@param Pitch float?
---@param Yaw float?
---@param Roll float?
---@return FRotator # As userdata
function FRotator(Pitch, Yaw, Roll)
    Pitch = Pitch or 0.0
    Yaw = Yaw or 0.0
    Roll = Roll or 0.0
    return {
        Pitch = Pitch,
        Yaw = Yaw,
        Roll = Roll
    }
end

---Returns FRotator as string format "Pitch, Yaw, Roll: %f, %f, %f"
---@param Rotator FRotator
---@return string
function RotatorToString(Rotator)
    return string.format("Pitch, Yaw, Roll: %f, %f, %f", Rotator.Pitch, Rotator.Yaw, Rotator.Roll)
end

---Resolves FRotator as userdata
---@param Rotator FRotator
---@return FRotator # FRotator but as table
function RotatorToUserdata(Rotator)
    return FRotator(Rotator.Pitch, Rotator.Yaw, Rotator.Roll)
end

---Compares two FRotator
---@param Rotator1 FRotator
---@param Rotator2 FRotator
---@return boolean
function IsRotatorEqual(Rotator1, Rotator2)
    return Rotator1 and Rotator2 and Rotator1.Pitch == Rotator2.Pitch and Rotator1.Yaw == Rotator2.Yaw and Rotator1.Roll == Rotator2.Roll
end

---Checks if FRotator is equal to 0, 0, 0
---@param Rotator FRotator
---@return boolean
function IsEmptyRotator(Rotator)
    return Rotator.Pitch == 0 and Rotator.Yaw == 0 and Rotator.Roll == 0
end

-- Units related functions --
-----------------------------

---comment Converts UE units (centimeter) to meters
---@param Units number
---@return number
function UnitsToM(Units)
    return Units / 100
end

---comment Converts meters to UE units (centimeter)
---@param Meters number
---@return number
function MToUnits(Meters)
    return Meters * 100
end