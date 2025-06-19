--!strict
-- // Exports
export type ModeData = {
	Name: string,
	Color: Color3? | string?,
	OutlineColor: Color3?,
	Amount: number,
	Locked: {number}? | boolean?
}

export type TypeData = {
	Modes: {ModeData}
}

return nil
