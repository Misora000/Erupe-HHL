package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfServerCommand represents the MSG_MHF_SERVER_COMMAND
type MsgMhfServerCommand struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfServerCommand) Opcode() network.PacketID {
	return network.MSG_MHF_SERVER_COMMAND
}

// Parse parses the packet from binary
func (m *MsgMhfServerCommand) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfServerCommand) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}
