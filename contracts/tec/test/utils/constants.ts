import { BigNumber } from '@0x/utils';

export const constants = {
    TEC_DOMAIN_NAME: '0x Protocol Trade Execution Coordinator',
    TEC_DOMAIN_VERSION: '1.0.0',
    TEC_APPROVAL_SCHEMA: {
        name: 'TECApproval',
        parameters: [
            { name: 'transactionHash', type: 'bytes32' },
            { name: 'transactionSignature', type: 'bytes' },
            { name: 'approvalExpirationTimeSeconds', type: 'uint256' },
        ],
    },
    SINGLE_FILL_FN_NAMES: ['fillOrder', 'fillOrKillOrder', 'fillOrderNoThrow'],
    BATCH_FILL_FN_NAMES: ['batchFillOrders', 'batchFillOrKillOrders', 'batchFillOrdersNoThrow'],
    MARKET_FILL_FN_NAMES: ['marketBuyOrders', 'marketBuyOrdersNoThrow', 'marketSellOrders', 'marketSellOrdersNoThrow'],
    MATCH_ORDERS: 'matchOrders',
    CANCEL_ORDERS: 'cancelOrders',
    BATCH_CANCEL_ORDERS: 'batchCancelOrders',
    CANCEL_ORDERS_UP_TO: 'cancelOrdersUpTo',
    TIME_BUFFER: new BigNumber(1000),
};
