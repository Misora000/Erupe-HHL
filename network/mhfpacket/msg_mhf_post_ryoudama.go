package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfPostRyoudama represents the MSG_MHF_POST_RYOUDAMA
type MsgMhfPostRyoudama struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfPostRyoudama) Opcode() network.PacketID {
	return network.MSG_MHF_POST_RYOUDAMA
}

// Parse parses the packet from binary
func (m *MsgMhfPostRyoudama) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfPostRyoudama) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}
