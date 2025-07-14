package binpacket

import (
	"github.com/Misora000/Erupe-HHL/common/byteframe"
	"github.com/Misora000/Erupe-HHL/common/stringsupport"
	"github.com/Misora000/Erupe-HHL/network"
)

type MsgBinMailNotify struct {
	SenderName string
}

func (m MsgBinMailNotify) Parse(bf *byteframe.ByteFrame) error {
	panic("implement me")
}

func (m MsgBinMailNotify) Build(bf *byteframe.ByteFrame) error {
	bf.WriteUint8(0x01) // Unk
	bf.WriteBytes(stringsupport.PaddedString(m.SenderName, 21, true))
	return nil
}

func (m MsgBinMailNotify) Opcode() network.PacketID {
	return network.MSG_SYS_CASTED_BINARY
}
