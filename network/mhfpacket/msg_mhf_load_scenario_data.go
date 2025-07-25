package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfLoadScenarioData represents the MSG_MHF_LOAD_SCENARIO_DATA
type MsgMhfLoadScenarioData struct {
	AckHandle uint32
}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfLoadScenarioData) Opcode() network.PacketID {
	return network.MSG_MHF_LOAD_SCENARIO_DATA
}

// Parse parses the packet from binary
func (m *MsgMhfLoadScenarioData) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	m.AckHandle = bf.ReadUint32()
	return nil
}

// Build builds a binary packet from the current data.
func (m *MsgMhfLoadScenarioData) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}
