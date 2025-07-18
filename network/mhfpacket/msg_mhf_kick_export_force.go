package mhfpacket

import (
	"errors"

	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/network"
	"github.com/Misora000/Erupe-HHL/network/clientctx"
)

// MsgMhfKickExportForce represents the MSG_MHF_KICK_EXPORT_FORCE
type MsgMhfKickExportForce struct{}

// Opcode returns the ID associated with this packet type.
func (m *MsgMhfKickExportForce) Opcode() network.PacketID {
	return network.MSG_MHF_KICK_EXPORT_FORCE
}

// Parse parses the packet from binary
func (m *MsgMhfKickExportForce) Parse(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}

// Build builds a binary packet from the current data.
func (m *MsgMhfKickExportForce) Build(bf *byteframe.ByteFrame, ctx *clientctx.ClientContext) error {
	return errors.New("NOT IMPLEMENTED")
}
