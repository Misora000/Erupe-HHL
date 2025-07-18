package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfShutClient represents the MSG_MHF_SHUT_CLIENT
type MsgMhfShutClient struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfShutClient) Opcode() network.PacketID {
	return network.MSG_MHF_SHUT_CLIENT
}

// Parse parses the packet from binary
func (m *MsgMhfShutClient) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfShutClient) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}
