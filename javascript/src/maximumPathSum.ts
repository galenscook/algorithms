interface NumberNode {
  number: number;
  maxToMe: number;
}

const NODES = [];
export default function greatestPath(triangle: Array<Array<number>>): number {
  triangle.forEach((row, rowIndex) => {
    NODES.push([]);
    row.forEach((triangleNumber, nodeIndex) => {
      const node = buildNode(triangleNumber, nodeIndex, rowIndex);
      NODES[rowIndex].push(node);
    });
  });

  return findMax();
}

function buildNode(number: number, index: number, rowIndex: number): NumberNode {
  const parentRow = NODES[rowIndex - 1];
  // Top number
  if (!parentRow) {
    return {
      number,
      maxToMe: number,
    };
  }

  const leftParent = parentRow[index - 1] || placeholderZeroNode();
  const rightParent = parentRow[index] || placeholderZeroNode();

  return {
    number,
    maxToMe: Math.max(leftParent.maxToMe, rightParent.maxToMe) + number,
  };
}

function placeholderZeroNode(): NumberNode {
  return {
    number: 0,
    maxToMe: 0,
  };
}

function findMax(): number {
  const lastIndex = NODES.length - 1;
  const maxValues = NODES[lastIndex].map(node => node.maxToMe);
  return Math.max(...maxValues);
}
